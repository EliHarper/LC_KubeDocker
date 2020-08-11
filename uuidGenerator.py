import uuid
import networkx as nx
import matplotlib.pyplot as plt

uuid_str = str(uuid.uuid1())
print(uuid_str.replace('-', ''))

################### AWS_PROOF_OF_BSery ####################

topNCompetitors = 4

competitors = {
    'google': 54,
    'huawei': 56,
    'microsoft': 72,
    'roku': 48,
    'ibm': 41
}

sort_competitors = dict(sorted(competitors.items(), key=lambda x: x[1], reverse=True))

competitors_list = list(sort_competitors.keys())

print(competitors_list[:topNCompetitors])
#########################################################################

G = nx.krackhardt_kite_graph()

print(nx.to_dict_of_lists(G))

print(nx.shortest_path(G, source=1, target=9))

print(list(nx.shortest_simple_paths(G, source=3, target=8)))

nx.draw_networkx(G)
plt.show()
